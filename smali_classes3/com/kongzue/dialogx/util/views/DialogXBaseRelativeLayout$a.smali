.class Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->c(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "KONGZUE DEBUG DIALOGX: unsafeRect t="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " b="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 43
    .line 44
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v1, 0x17

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-lt v0, v1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/c;->a(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;)Landroid/view/WindowInsets;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/c;->a(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;)Landroid/view/WindowInsets;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v0, v3}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget v1, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 98
    .line 99
    if-ne v1, p4, :cond_1

    .line 100
    .line 101
    iget v1, v0, Landroidx/core/graphics/Insets;->top:I

    .line 102
    .line 103
    if-ne v1, p2, :cond_1

    .line 104
    .line 105
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    .line 106
    .line 107
    if-ne v1, p1, :cond_1

    .line 108
    .line 109
    iget v1, v0, Landroidx/core/graphics/Insets;->right:I

    .line 110
    .line 111
    if-ne v1, p3, :cond_1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move-object v2, v0

    .line 115
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 116
    .line 117
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 120
    .line 121
    iget v1, v2, Landroidx/core/graphics/Insets;->left:I

    .line 122
    .line 123
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 132
    .line 133
    iget v0, v2, Landroidx/core/graphics/Insets;->top:I

    .line 134
    .line 135
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 142
    .line 143
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 144
    .line 145
    iget p2, v2, Landroidx/core/graphics/Insets;->right:I

    .line 146
    .line 147
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 152
    .line 153
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 156
    .line 157
    iget p2, v2, Landroidx/core/graphics/Insets;->bottom:I

    .line 158
    .line 159
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 169
    .line 170
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 173
    .line 174
    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 175
    .line 176
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 177
    .line 178
    :goto_1
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->a(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;)Lcom/kongzue/dialogx/interfaces/z;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_4

    .line 185
    .line 186
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->a(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;)Lcom/kongzue/dialogx/interfaces/z;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 193
    .line 194
    iget-object p2, p2, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 195
    .line 196
    invoke-interface {p1, p2}, Lcom/kongzue/dialogx/interfaces/z;->a(Landroid/graphics/Rect;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 200
    .line 201
    iget-object p2, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 202
    .line 203
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 204
    .line 205
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 206
    .line 207
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 208
    .line 209
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 210
    .line 211
    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setUnsafePadding(IIII)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public b(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$b;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq p1, v2, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-eq p1, v2, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 26
    .line 27
    aget p1, p1, v1

    .line 28
    .line 29
    return p1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 33
    .line 34
    aget p1, p1, v2

    .line 35
    .line 36
    return p1

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 40
    .line 41
    aget p1, p1, v1

    .line 42
    .line 43
    return p1

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 47
    .line 48
    aget p1, p1, v0

    .line 49
    .line 50
    return p1
.end method

.method public c(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$Orientation;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method
