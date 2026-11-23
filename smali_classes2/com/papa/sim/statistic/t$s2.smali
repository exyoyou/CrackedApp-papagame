.class Lcom/papa/sim/statistic/t$s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->w(Lcom/papa/sim/statistic/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/papa/sim/statistic/f;

.field final synthetic d:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;ZLcom/papa/sim/statistic/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$s2;->d:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/papa/sim/statistic/t$s2;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/sim/statistic/t$s2;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->d:Lcom/papa/sim/statistic/t;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/papa/sim/statistic/f;->e()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->d()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->c()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual/range {v2 .. v8}, Lcom/papa/sim/statistic/s;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->d:Lcom/papa/sim/statistic/t;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    sget-object v0, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/papa/sim/statistic/f;->e()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->b()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->a()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->d()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iget-object v0, p0, Lcom/papa/sim/statistic/t$s2;->c:Lcom/papa/sim/statistic/f;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/papa/sim/statistic/f;->c()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual/range {v2 .. v8}, Lcom/papa/sim/statistic/s;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .line 127
    .line 128
    :catch_0
    :goto_0
    return-void
.end method
