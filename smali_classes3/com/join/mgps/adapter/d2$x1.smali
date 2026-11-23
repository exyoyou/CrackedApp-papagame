.class Lcom/join/mgps/adapter/d2$x1;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "x1"
.end annotation


# instance fields
.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/LinearLayout;

.field s:Landroid/widget/LinearLayout;

.field t:Landroid/widget/LinearLayout;

.field u:Landroid/widget/LinearLayout;

.field v:Landroid/widget/LinearLayout;

.field final synthetic w:Lcom/join/mgps/adapter/d2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/d2;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->w:Lcom/join/mgps/adapter/d2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1032

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a1033

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->e:Landroid/view/View;

    .line 25
    .line 26
    const p1, 0x7f0a109a

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/adapter/d2$x1;->f:Landroid/widget/TextView;

    .line 36
    .line 37
    const v0, 0x7f0a0fa1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/mgps/adapter/d2$x1;->g:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->f:Landroid/widget/TextView;

    .line 55
    .line 56
    const p1, 0x7f0a0506

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->h:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->g:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    const p1, 0x7f0a0504

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->i:Landroid/widget/TextView;

    .line 85
    .line 86
    const p1, 0x7f0a116c

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->j:Landroid/widget/TextView;

    .line 96
    .line 97
    const p1, 0x7f0a00f7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/TextView;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->k:Landroid/widget/TextView;

    .line 107
    .line 108
    const p1, 0x7f0a1af1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/widget/TextView;

    .line 116
    .line 117
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->l:Landroid/widget/TextView;

    .line 118
    .line 119
    const p1, 0x7f0a00cf

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Landroid/widget/TextView;

    .line 127
    .line 128
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->m:Landroid/widget/TextView;

    .line 129
    .line 130
    const p1, 0x7f0a03fd

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->n:Landroid/widget/TextView;

    .line 140
    .line 141
    const p1, 0x7f0a137d

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->o:Landroid/widget/TextView;

    .line 151
    .line 152
    const p1, 0x7f0a1aec

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Landroid/widget/TextView;

    .line 160
    .line 161
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->p:Landroid/widget/TextView;

    .line 162
    .line 163
    const p1, 0x7f0a137e

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Landroid/widget/LinearLayout;

    .line 171
    .line 172
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->r:Landroid/widget/LinearLayout;

    .line 173
    .line 174
    const p1, 0x7f0a03fe

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Landroid/widget/LinearLayout;

    .line 182
    .line 183
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->s:Landroid/widget/LinearLayout;

    .line 184
    .line 185
    const p1, 0x7f0a00d0

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Landroid/widget/LinearLayout;

    .line 193
    .line 194
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->u:Landroid/widget/LinearLayout;

    .line 195
    .line 196
    const p1, 0x7f0a116d

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/widget/LinearLayout;

    .line 204
    .line 205
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->t:Landroid/widget/LinearLayout;

    .line 206
    .line 207
    const p1, 0x7f0a15af

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Landroid/widget/LinearLayout;

    .line 215
    .line 216
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->v:Landroid/widget/LinearLayout;

    .line 217
    .line 218
    const p1, 0x7f0a177f

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Landroid/widget/TextView;

    .line 226
    .line 227
    iput-object p1, p0, Lcom/join/mgps/adapter/d2$x1;->q:Landroid/widget/TextView;

    .line 228
    .line 229
    return-void
.end method
