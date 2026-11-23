.class Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ScrollTextViewLayout$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollTextViewLayout$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->f(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout;->k:Ljava/lang/Runnable;

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v0, v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->b(Lcom/join/mgps/customview/ScrollTextViewLayout;Z)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/join/mgps/customview/ScrollTextViewLayout;->j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    array-length v2, v2

    .line 45
    rem-int/2addr v0, v2

    .line 46
    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->h(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->j(Lcom/join/mgps/customview/ScrollTextViewLayout;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollTextViewLayout;->g(Lcom/join/mgps/customview/ScrollTextViewLayout;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    aget-object p1, p1, v0

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const-string v0, ""

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v4, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 97
    .line 98
    iget-object v4, v4, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 99
    .line 100
    invoke-static {v4}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iget-object v5, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 109
    .line 110
    iget-object v5, v5, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 111
    .line 112
    invoke-static {v5}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v4, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 132
    .line 133
    iget-object v4, v4, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 134
    .line 135
    invoke-static {v4}, Lcom/join/mgps/customview/ScrollTextViewLayout;->c(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lq5/f;->V()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_3

    .line 174
    .line 175
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 176
    .line 177
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->p()V

    .line 180
    .line 181
    .line 182
    const/4 p1, 0x1

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 184
    .line 185
    iget-object v3, v3, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 186
    .line 187
    invoke-static {v3}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 210
    .line 211
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->d(Lcom/join/mgps/customview/ScrollTextViewLayout;)Landroid/widget/TextView;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollTextViewLayout$b$a;->b:Lcom/join/mgps/customview/ScrollTextViewLayout$b;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/join/mgps/customview/ScrollTextViewLayout$b;->b:Lcom/join/mgps/customview/ScrollTextViewLayout;

    .line 223
    .line 224
    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollTextViewLayout;->i(Lcom/join/mgps/customview/ScrollTextViewLayout;I)I

    .line 225
    .line 226
    .line 227
    return-void
.end method
