.class Lcom/kongzue/dialogx/dialogs/a$e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/a$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/a$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a$e;->f()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->a1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->e()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/a;->b1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->e()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->c(Z)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/a;->c1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/a;->d1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/a;->f1(Lcom/kongzue/dialogx/dialogs/a;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->e()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->b()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    int-to-float v2, v2

    .line 83
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lcom/kongzue/dialogx/dialogs/a;->g1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Float;)Ljava/lang/Float;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    move-object v1, v0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/a$e;->d(Lcom/kongzue/dialogx/dialogs/a$e;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 103
    .line 104
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/a$e;->d(Lcom/kongzue/dialogx/dialogs/a$e;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Landroid/view/View;

    .line 123
    .line 124
    check-cast v3, Lcom/kongzue/dialogx/interfaces/b;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 127
    .line 128
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 129
    .line 130
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/a;->h1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    if-nez v4, :cond_1

    .line 135
    .line 136
    move-object v4, v0

    .line 137
    goto :goto_2

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/a$e$i;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 139
    .line 140
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 141
    .line 142
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/a;->i1(Lcom/kongzue/dialogx/dialogs/a;)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    :goto_2
    invoke-interface {v3, v4}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v3, v1}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    return-void
.end method
