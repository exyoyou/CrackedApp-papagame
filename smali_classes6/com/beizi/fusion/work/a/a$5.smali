.class Lcom/beizi/fusion/work/a/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/a/a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/beizi/fusion/work/a/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/a/a;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/work/a/a$5;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x4

    .line 9
    new-array p1, p1, [Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->a:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->x(Lcom/beizi/fusion/work/a/a;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/fusion/work/a/a;->y(Lcom/beizi/fusion/work/a/a;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->b:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->a:[Ljava/lang/String;

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    aput-object v3, v1, v0

    .line 62
    .line 63
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->a:[Ljava/lang/String;

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    aput-object v3, v1, v2

    .line 85
    .line 86
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->a:[Ljava/lang/String;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v4, 0x2

    .line 108
    aput-object v3, v1, v4

    .line 109
    .line 110
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->a:[Ljava/lang/String;

    .line 111
    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const/4 v3, 0x3

    .line 132
    aput-object p1, v1, v3

    .line 133
    .line 134
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->x(Lcom/beizi/fusion/work/a/a;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_2

    .line 141
    .line 142
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a$5;->a:[Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p1, v1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;[Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-ne p1, v2, :cond_3

    .line 154
    .line 155
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->y(Lcom/beizi/fusion/work/a/a;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_3

    .line 162
    .line 163
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 164
    .line 165
    iget-object p2, p0, Lcom/beizi/fusion/work/a/a$5;->a:[Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {p1, p2}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/work/a/a;[Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 171
    .line 172
    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->x(Lcom/beizi/fusion/work/a/a;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_4

    .line 177
    .line 178
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a$5;->c:Lcom/beizi/fusion/work/a/a;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/beizi/fusion/work/a/a;->y(Lcom/beizi/fusion/work/a/a;)Z

    .line 181
    .line 182
    .line 183
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    if-eqz p1, :cond_5

    .line 185
    .line 186
    :cond_4
    return v2

    .line 187
    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    :cond_5
    return v0
.end method
