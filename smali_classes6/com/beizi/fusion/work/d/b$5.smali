.class Lcom/beizi/fusion/work/d/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/d/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/beizi/fusion/work/d/b;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/d/b;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/work/d/b$5;->a:Ljava/util/List;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/work/d/b;->aK()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->h(Lcom/beizi/fusion/work/d/b;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/d/b;->b(Lcom/beizi/fusion/work/d/b;I)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/d/b;->c(Lcom/beizi/fusion/work/d/b;I)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->i(Lcom/beizi/fusion/work/d/b;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/work/d/b;->j(Lcom/beizi/fusion/work/d/b;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget-object v3, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/beizi/fusion/work/d/b;->j(Lcom/beizi/fusion/work/d/b;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v0, v1, v2, v3}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;III)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->k(Lcom/beizi/fusion/work/d/b;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->l(Lcom/beizi/fusion/work/d/b;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->a:Ljava/util/List;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-lez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->m(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/e;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b$5;->a:Ljava/util/List;

    .line 96
    .line 97
    new-instance v3, Lcom/beizi/fusion/work/d/b$5$1;

    .line 98
    .line 99
    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/d/b$5$1;-><init>(Lcom/beizi/fusion/work/d/b$5;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1, v2, v3}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Ljava/util/List;Lcom/beizi/ad/internal/c/b;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->m(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/e;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 115
    .line 116
    new-instance v2, Lcom/beizi/fusion/work/d/b$5$2;

    .line 117
    .line 118
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/d/b$5$2;-><init>(Lcom/beizi/fusion/work/d/b$5;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Lcom/beizi/ad/internal/c/b;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b$5;->a:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/v2/d/c;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/v2/d/c;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b$5;->b:Lcom/beizi/fusion/work/d/b;

    .line 147
    .line 148
    iget-object v1, v1, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    new-instance v2, Lcom/beizi/fusion/work/d/b$5$3;

    .line 151
    .line 152
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/d/b$5$3;-><init>(Lcom/beizi/fusion/work/d/b$5;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/v2/d/c;->a(Landroid/view/View;Lcom/beizi/ad/internal/c/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_2
    return-void
.end method
