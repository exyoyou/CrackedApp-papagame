.class Lcom/googlecode/mp4parser/authoring/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field private a:Lcom/coremedia/iso/boxes/j;

.field private b:Lcom/mp4parser/iso14496/part12/c;

.field private c:Lcom/mp4parser/iso14496/part12/b;

.field final synthetic d:Lcom/googlecode/mp4parser/authoring/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/b;Lcom/coremedia/iso/boxes/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/b$a;->d:Lcom/googlecode/mp4parser/authoring/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/b$a;->a:Lcom/coremedia/iso/boxes/j;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/googlecode/mp4parser/authoring/b$a;)Lcom/mp4parser/iso14496/part12/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/googlecode/mp4parser/authoring/b$a;->c:Lcom/mp4parser/iso14496/part12/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/googlecode/mp4parser/authoring/b$a;)Lcom/mp4parser/iso14496/part12/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/googlecode/mp4parser/authoring/b$a;->b:Lcom/mp4parser/iso14496/part12/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Lcom/mp4parser/iso14496/part12/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/b$a;->c:Lcom/mp4parser/iso14496/part12/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/mp4parser/iso14496/part12/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/b$a;->b:Lcom/mp4parser/iso14496/part12/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/googlecode/mp4parser/authoring/b$a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/b$a;->a:Lcom/coremedia/iso/boxes/j;

    .line 2
    .line 3
    const-class v1, Lcom/mp4parser/iso14496/part12/c;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/j;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/b$a;->a:Lcom/coremedia/iso/boxes/j;

    .line 10
    .line 11
    const-class v2, Lcom/mp4parser/iso14496/part12/b;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Lcom/coremedia/iso/boxes/j;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/b$a;->b:Lcom/mp4parser/iso14496/part12/c;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/b$a;->c:Lcom/mp4parser/iso14496/part12/b;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lt v2, v3, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->b:Lcom/mp4parser/iso14496/part12/c;

    .line 31
    .line 32
    const-string v4, "cenc"

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/mp4parser/iso14496/part12/c;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/c;->v()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/mp4parser/iso14496/part12/c;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/c;->v()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/mp4parser/iso14496/part12/c;

    .line 69
    .line 70
    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->b:Lcom/mp4parser/iso14496/part12/c;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->b:Lcom/mp4parser/iso14496/part12/c;

    .line 74
    .line 75
    if-eqz v3, :cond_8

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/c;->v()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez v3, :cond_8

    .line 82
    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/mp4parser/iso14496/part12/c;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/c;->v()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_8

    .line 98
    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lcom/mp4parser/iso14496/part12/c;

    .line 104
    .line 105
    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->b:Lcom/mp4parser/iso14496/part12/c;

    .line 106
    .line 107
    :goto_1
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->c:Lcom/mp4parser/iso14496/part12/b;

    .line 108
    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/mp4parser/iso14496/part12/b;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/b;->v()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lcom/mp4parser/iso14496/part12/b;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/b;->v()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lcom/mp4parser/iso14496/part12/b;

    .line 144
    .line 145
    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->c:Lcom/mp4parser/iso14496/part12/b;

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->c:Lcom/mp4parser/iso14496/part12/b;

    .line 149
    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/b;->v()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v3, :cond_7

    .line 157
    .line 158
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    check-cast v3, Lcom/mp4parser/iso14496/part12/b;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/mp4parser/iso14496/part12/b;->v()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lcom/mp4parser/iso14496/part12/b;

    .line 179
    .line 180
    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/b$a;->c:Lcom/mp4parser/iso14496/part12/b;

    .line 181
    .line 182
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 187
    .line 188
    const-string v1, "Are there two cenc labeled saio?"

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 195
    .line 196
    const-string v1, "Are there two cenc labeled saiz?"

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0
.end method
