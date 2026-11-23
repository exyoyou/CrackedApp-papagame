.class public Lcom/byazt/tp/tt$3;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tp/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tp/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tp/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;Lcom/byazt/pop/ve;)Lcom/byazt/pop/ve;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    .line 41
    .line 42
    instance-of v1, v1, Landroid/app/Activity;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    .line 53
    .line 54
    check-cast v1, Landroid/app/Activity;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-interface {v0, v1, v2}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/byazt/tp/tt;->ve(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-class v1, Lcom/byazt/nat/c;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/byazt/tp/tt;->ve(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/a;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/byazt/nat/c;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 83
    .line 84
    invoke-static {v2}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/byazt/tp/tt;->uj(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/n;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/byazt/tp/tt;->uj(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/n;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/byazt/nat/c;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/byazt/tp/tt;->n(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/NativeExpressView;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v0, v1, v2}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/byazt/tp/tt$3;->c:Lcom/byazt/tp/tt;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Lcom/byazt/pop/ve;->c()V

    .line 142
    .line 143
    .line 144
    :cond_3
    return-void
.end method
