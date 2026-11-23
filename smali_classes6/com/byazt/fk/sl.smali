.class public Lcom/byazt/fk/sl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/da$c;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a0,
        0x9e
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/fk/da$c;


# direct methods
.method public constructor <init>(Lcom/byazt/fk/da$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/fk/sl;->tt:Lcom/byazt/fk/da$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/fk/sl;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v0, v2, :cond_4

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/byazt/fk/yp;

    .line 35
    .line 36
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {v1, v0}, Lcom/byazt/fk/yp;-><init>(Ljava/util/function/Function;)V

    .line 41
    .line 42
    .line 43
    move-object v0, v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/byazt/fk/sl;->tt:Lcom/byazt/fk/da$c;

    .line 45
    .line 46
    check-cast v0, Lcom/byazt/fk/u;

    .line 47
    .line 48
    check-cast p1, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-interface {v1, v0, p1}, Lcom/byazt/fk/da$c;->cancel(Lcom/byazt/fk/u;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    new-instance v2, Lcom/byazt/fk/yp;

    .line 73
    .line 74
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v2, v0}, Lcom/byazt/fk/yp;-><init>(Ljava/util/function/Function;)V

    .line 79
    .line 80
    .line 81
    move-object v0, v2

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/byazt/fk/sl;->tt:Lcom/byazt/fk/da$c;

    .line 83
    .line 84
    check-cast v0, Lcom/byazt/fk/u;

    .line 85
    .line 86
    check-cast v1, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    check-cast p1, Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v2, v0, v1, p1}, Lcom/byazt/fk/da$c;->onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    new-instance v1, Lcom/byazt/fk/yp;

    .line 109
    .line 110
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {v1, v0}, Lcom/byazt/fk/yp;-><init>(Ljava/util/function/Function;)V

    .line 115
    .line 116
    .line 117
    move-object v0, v1

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/byazt/fk/sl;->tt:Lcom/byazt/fk/da$c;

    .line 119
    .line 120
    check-cast v0, Lcom/byazt/fk/u;

    .line 121
    .line 122
    check-cast p1, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-interface {v1, v0, p1}, Lcom/byazt/fk/da$c;->onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V

    .line 129
    .line 130
    .line 131
    :goto_0
    const/4 p1, 0x0

    .line 132
    return-object p1
.end method

.method public cancel(Lcom/byazt/fk/u;I)V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/byazt/fk/yp;

    invoke-direct {v1, p1}, Lcom/byazt/fk/yp;-><init>(Lcom/byazt/fk/u;)V

    move-object p1, v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/sl;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v2, Lcom/byazt/fk/yp;

    invoke-direct {v2, p1}, Lcom/byazt/fk/yp;-><init>(Lcom/byazt/fk/u;)V

    move-object p1, v2

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/sl;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v2, Lcom/byazt/fk/yp;

    invoke-direct {v2, p1}, Lcom/byazt/fk/yp;-><init>(Lcom/byazt/fk/u;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/sl;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
