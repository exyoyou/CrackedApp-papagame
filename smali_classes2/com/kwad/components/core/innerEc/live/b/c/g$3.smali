.class final Lcom/kwad/components/core/innerEc/live/b/c/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/g;->sl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;


# direct methods
.method constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p3, "\n"

    .line 12
    .line 13
    const-string p4, ""

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p3, "\r"

    .line 20
    .line 21
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2, p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->f(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/16 p3, 0x8

    .line 45
    .line 46
    const/4 p4, 0x0

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    const/16 p2, 0x8

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p2, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 67
    .line 68
    invoke-static {p2}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineHeight()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    mul-int p2, p2, p1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->g(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/high16 v1, 0x41800000    # 16.0f

    .line 91
    .line 92
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/2addr p2, v0

    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    const/16 p2, 0x22

    .line 111
    .line 112
    if-le p1, p2, :cond_1

    .line 113
    .line 114
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p4, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v0, "\u5b57\u6570\u8d85\u51fa\u6700\u5927\u9650\u5236"

    .line 157
    .line 158
    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/ae;->W(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->h(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/TextView;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const/16 v1, 0x16

    .line 178
    .line 179
    if-le v0, v1, :cond_2

    .line 180
    .line 181
    const/4 p3, 0x0

    .line 182
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 186
    .line 187
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->h(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/TextView;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-object p3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 192
    .line 193
    invoke-static {p3}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    rsub-int/lit8 p3, p3, 0x22

    .line 202
    .line 203
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 211
    .line 212
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->h(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/TextView;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object p3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 217
    .line 218
    invoke-static {p3}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    if-ne p3, p2, :cond_3

    .line 227
    .line 228
    const-string p2, "#FE3666"

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_3
    const-string p2, "#C6C6C6"

    .line 232
    .line 233
    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    .line 239
    .line 240
    return-void
.end method
