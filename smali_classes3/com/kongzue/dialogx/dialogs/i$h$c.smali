.class Lcom/kongzue/dialogx/dialogs/i$h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/i$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/i$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/i$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i$h;->e()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 21
    .line 22
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/i;->Z0(Lcom/kongzue/dialogx/dialogs/i;Landroidx/lifecycle/Lifecycle$State;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->a1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->b1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/i;->c1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->c(Z)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/i;->d1(Lcom/kongzue/dialogx/dialogs/i;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/i;->e1(Lcom/kongzue/dialogx/dialogs/i;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/i;->f1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->b()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    int-to-float v2, v2

    .line 120
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Lcom/kongzue/dialogx/dialogs/i;->h1(Lcom/kongzue/dialogx/dialogs/i;Ljava/lang/Float;)Ljava/lang/Float;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 130
    move-object v1, v0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 132
    .line 133
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/i$h;->c(Lcom/kongzue/dialogx/dialogs/i$h;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    .line 139
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/i$h;->c(Lcom/kongzue/dialogx/dialogs/i$h;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_2

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroid/view/View;

    .line 160
    .line 161
    check-cast v3, Lcom/kongzue/dialogx/interfaces/b;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 164
    .line 165
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 166
    .line 167
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/i;->i1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    if-nez v4, :cond_1

    .line 172
    .line 173
    move-object v4, v0

    .line 174
    goto :goto_2

    .line 175
    :cond_1
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i$h$c;->b:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 176
    .line 177
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/i$h;->f:Lcom/kongzue/dialogx/dialogs/i;

    .line 178
    .line 179
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/i;->j1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    :goto_2
    invoke-interface {v3, v4}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v3, v1}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    return-void
.end method
