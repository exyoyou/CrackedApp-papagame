.class Lcom/kongzue/dialogx/dialogs/g$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/g$e$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/g$e$a;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/g$e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->V0(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->e()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/g;->W0(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->e()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->c(Z)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/g;->X0(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/g;->Y0(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/g;->Z0(Lcom/kongzue/dialogx/dialogs/g;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->e()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->b()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    int-to-float v2, v2

    .line 76
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lcom/kongzue/dialogx/dialogs/g;->a1(Lcom/kongzue/dialogx/dialogs/g;Ljava/lang/Float;)Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    move-object v1, v0

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/g$e;->c(Lcom/kongzue/dialogx/dialogs/g$e;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 100
    .line 101
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/g$e;->c(Lcom/kongzue/dialogx/dialogs/g$e;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Landroid/view/View;

    .line 120
    .line 121
    check-cast v3, Lcom/kongzue/dialogx/interfaces/b;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 124
    .line 125
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 126
    .line 127
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 128
    .line 129
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/g;->b1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-nez v4, :cond_1

    .line 134
    .line 135
    move-object v4, v0

    .line 136
    goto :goto_2

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 138
    .line 139
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 142
    .line 143
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/g;->c1(Lcom/kongzue/dialogx/dialogs/g;)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    :goto_2
    invoke-interface {v3, v4}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v3, v1}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$a$a;->b:Lcom/kongzue/dialogx/dialogs/g$e$a;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e$a;->a:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 159
    .line 160
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 161
    .line 162
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/g;->d1(Lcom/kongzue/dialogx/dialogs/g;Landroidx/lifecycle/Lifecycle$State;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
