.class public Lcom/mp4parser/iso14496/part30/d;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "SourceFile"


# instance fields
.field e:[Ljava/lang/String;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/mp4parser/iso14496/part30/b;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mp4parser/iso14496/part30/d;->f:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Lcom/mp4parser/iso14496/part30/b;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/mp4parser/iso14496/part30/b;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/mp4parser/iso14496/part30/d;->g:Lcom/mp4parser/iso14496/part30/b;

    .line 21
    .line 22
    new-instance v1, Lcom/mp4parser/iso14496/part30/a;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/mp4parser/iso14496/part30/a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/d;->g:Lcom/mp4parser/iso14496/part30/b;

    .line 31
    .line 32
    new-instance v1, Lcom/mp4parser/iso14496/part30/c;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/mp4parser/iso14496/part30/c;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->size()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-long v0, v0

    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    invoke-interface {p1, v2, v3, v0, v1}, Lcom/googlecode/mp4parser/e;->r(JJ)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->size()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    new-array p1, p1, [B

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/coremedia/iso/l;->a([B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "\\r?\\n"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/mp4parser/iso14496/part30/d;->e:[Ljava/lang/String;

    .line 79
    .line 80
    const-string p1, ""

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/d;->e:[Ljava/lang/String;

    .line 84
    .line 85
    array-length v1, v1

    .line 86
    if-lt v0, v1, :cond_0

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/mp4parser/iso14496/part30/d;->e:[Ljava/lang/String;

    .line 99
    .line 100
    aget-object p1, p1, v0

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, "\n"

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/d;->e:[Ljava/lang/String;

    .line 115
    .line 116
    add-int/lit8 v2, v0, 0x1

    .line 117
    .line 118
    aget-object v1, v1, v2

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/d;->e:[Ljava/lang/String;

    .line 127
    .line 128
    add-int/lit8 v3, v0, 0x2

    .line 129
    .line 130
    aget-object v1, v1, v3

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    :goto_1
    iget-object p1, p0, Lcom/mp4parser/iso14496/part30/d;->e:[Ljava/lang/String;

    .line 139
    .line 140
    array-length v1, p1

    .line 141
    if-lt v0, v1, :cond_1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_1
    aget-object p1, p1, v0

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_2

    .line 151
    .line 152
    :goto_2
    return-void

    .line 153
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    move v0, v2

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public Z()[J
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
