.class public Lc5/a;
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

.method public static a(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/d;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/f;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/coremedia/iso/f;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/googlecode/mp4parser/authoring/d;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/coremedia/iso/f;->v()Lcom/coremedia/iso/boxes/h0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-class v3, Lcom/coremedia/iso/boxes/f1;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/coremedia/iso/f;->v()Lcom/coremedia/iso/boxes/h0;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/h0;->v()Lcom/coremedia/iso/boxes/i0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->y()Lcom/googlecode/mp4parser/util/l;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Lcom/googlecode/mp4parser/authoring/d;->h(Lcom/googlecode/mp4parser/util/l;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/coremedia/iso/boxes/f1;

    .line 52
    .line 53
    const-string v4, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]"

    .line 54
    .line 55
    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/coremedia/iso/boxes/x0;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const-string v6, "]"

    .line 63
    .line 64
    const-string v7, "["

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/x0;->v()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const-string v9, "cenc"

    .line 73
    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_1

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/x0;->v()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v8, "cbc1"

    .line 85
    .line 86
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    :cond_1
    new-instance v4, Lcom/googlecode/mp4parser/authoring/b;

    .line 93
    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 115
    .line 116
    .line 117
    move-result-wide v9

    .line 118
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    new-array v5, v5, [Lcom/coremedia/iso/f;

    .line 129
    .line 130
    invoke-direct {v4, v6, v3, v5}, Lcom/googlecode/mp4parser/authoring/b;-><init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/f1;[Lcom/coremedia/iso/f;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/authoring/d;->a(Lcom/googlecode/mp4parser/authoring/h;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    new-instance v4, Lcom/googlecode/mp4parser/authoring/e;

    .line 138
    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 160
    .line 161
    .line 162
    move-result-wide v9

    .line 163
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    new-array v5, v5, [Lcom/coremedia/iso/f;

    .line 174
    .line 175
    invoke-direct {v4, v6, v3, v5}, Lcom/googlecode/mp4parser/authoring/e;-><init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/f1;[Lcom/coremedia/iso/f;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/authoring/d;->a(Lcom/googlecode/mp4parser/authoring/h;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/googlecode/mp4parser/authoring/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/g;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/g;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lc5/a;->a(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/d;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
