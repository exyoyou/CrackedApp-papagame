.class Lcom/beizi/fusion/work/c/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/a;->aB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/c/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/c/a;->b(Lcom/beizi/fusion/work/c/a;J)J

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 11
    .line 12
    sget-object v1, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/c/a;->b(Lcom/beizi/fusion/work/c/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->h(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "1"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->c(Lcom/beizi/fusion/work/c/a;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    cmp-long v4, v0, v2

    .line 45
    .line 46
    if-lez v4, :cond_0

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->c(Lcom/beizi/fusion/work/c/a;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    sub-long/2addr v0, v2

    .line 59
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->i(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->j(Lcom/beizi/fusion/work/c/a;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->k(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->l(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v1, 0x2

    .line 96
    if-eq v0, v1, :cond_2

    .line 97
    .line 98
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->m(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/beizi/fusion/work/c/a;->f()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->n(Lcom/beizi/fusion/work/c/a;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->o(Lcom/beizi/fusion/work/c/a;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->p(Lcom/beizi/fusion/work/c/a;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->q(Lcom/beizi/fusion/work/c/a;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$12;->a:Lcom/beizi/fusion/work/c/a;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->r(Lcom/beizi/fusion/work/c/a;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
