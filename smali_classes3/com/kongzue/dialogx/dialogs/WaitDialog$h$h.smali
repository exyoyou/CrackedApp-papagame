.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->h(Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$g;->a:[I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$TYPE;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    aget v0, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/kongzue/dialogx/interfaces/b0;->loading()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/kongzue/dialogx/interfaces/b0;->error()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/kongzue/dialogx/interfaces/b0;->success()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/kongzue/dialogx/interfaces/b0;->b()V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 89
    .line 90
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1}, Lcom/kongzue/dialogx/interfaces/b0;->d(Ljava/lang/Runnable;)Lcom/kongzue/dialogx/interfaces/b0;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 122
    .line 123
    iget-wide v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog;->U:J

    .line 124
    .line 125
    const-wide/16 v2, 0x0

    .line 126
    .line 127
    cmp-long v4, v0, v2

    .line 128
    .line 129
    if-lez v4, :cond_6

    .line 130
    .line 131
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$b;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$b;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 139
    .line 140
    iget-wide v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->U:J

    .line 141
    .line 142
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->O1(Ljava/lang/Runnable;J)V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_1
    return-void
.end method
