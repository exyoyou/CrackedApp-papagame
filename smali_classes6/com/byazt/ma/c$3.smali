.class public Lcom/byazt/ma/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ma/c;->c(Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Landroid/view/View;

.field public final synthetic uj:Lcom/byazt/ma/c;

.field public final synthetic ve:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/byazt/ma/c;Lorg/json/JSONObject;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ma/c$3;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ma/c$3;->tt:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ma/c$3;->ve:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ma/c;->sl(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ir;->ve()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/ma/c$3;->c:Lorg/json/JSONObject;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/byazt/ma/c$3;->tt:Landroid/view/View;

    .line 25
    .line 26
    invoke-static {v1, v0, v2, v3}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;ILorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/byazt/ma/c$3;->tt:Landroid/view/View;

    .line 33
    .line 34
    invoke-static {v2, v3, v1}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;Landroid/view/View;Lorg/json/JSONObject;)Lcom/byazt/atv/tt;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/byazt/ma/c$3;->ve:Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-static {v2, v0, v1, v3}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;ILcom/byazt/atv/tt;Landroid/view/ViewGroup;)Lcom/byazt/atv/n;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v2, v1}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;Lcom/byazt/atv/n;)Lcom/byazt/atv/n;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/byazt/ma/c;->u(Lcom/byazt/ma/c;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    if-ne v0, v1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v1, 0x2

    .line 59
    :goto_0
    invoke-static {}, Lcom/byazt/rgb/a;->c()Lcom/byazt/lh/sp;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/byazt/ma/c;->yp(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v3, Lcom/byazt/ma/c$3$1;

    .line 74
    .line 75
    invoke-direct {v3, p0, v1}, Lcom/byazt/ma/c$3$1;-><init>(Lcom/byazt/ma/c$3;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v3}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/byazt/ma/c;->z(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/byazt/rgb/a;->ve(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/byazt/ma/c;->m(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/byazt/ma/c;->rl(Lcom/byazt/ma/c;)Lcom/byazt/atv/n;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Lcom/byazt/ma/c$3$2;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/byazt/ma/c$3$2;-><init>(Lcom/byazt/ma/c$3;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/sp;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/byazt/ma/c;->t(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    .line 131
    .line 132
    const/16 v2, 0x64

    .line 133
    .line 134
    const-string v3, "materialMeta or ugenComponent is null"

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    invoke-static {v0, v1, v4, v2, v3}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
