.class public Lcom/byazt/nf/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bo/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f1,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nf/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tt()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->p()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public uj()Ljava/util/Map;
    .locals 5
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isGroMoreServerSideVerify"

    .line 7
    .line 8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/byazt/nf/c;->tt(Lcom/byazt/nf/c;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "transId"

    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "reason"

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, ""

    .line 41
    .line 42
    const-string v3, "gromoreExtra"

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v1, v2

    .line 74
    :goto_0
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/byazt/nf/c;->ve(Lcom/byazt/nf/c;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v3, "errorCode"

    .line 88
    .line 89
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/byazt/nf/c;->uj(Lcom/byazt/nf/c;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v3, "errorMsg"

    .line 99
    .line 100
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v3, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 110
    .line 111
    invoke-static {v3}, Lcom/byazt/nf/c;->n(Lcom/byazt/nf/c;)Lcom/byazt/yl/ve;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const/4 v4, 0x1

    .line 116
    invoke-static {v1, v3, v4}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/byazt/pp/ve;->t()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    move-object v3, v2

    .line 128
    :goto_1
    const-string v4, "adnName"

    .line 129
    .line 130
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/byazt/pp/ve;->u()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    :cond_2
    const-string v1, "ecpm"

    .line 140
    .line 141
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nf/c$1;->c:Lcom/byazt/nf/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;)Lcom/byazt/ll/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->yv()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    return-object v0
.end method
