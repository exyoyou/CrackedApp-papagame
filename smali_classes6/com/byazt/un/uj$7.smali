.class public Lcom/byazt/un/uj$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x6d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/un/uj;->nt(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/un/uj;->gy(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/byazt/un/uj;->gx(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/un/uj;->pn(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/byazt/un/uj;->mm(Lcom/byazt/un/uj;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/byazt/un/uj;->vp(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/byazt/un/uj;->yo(Lcom/byazt/un/uj;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/byazt/un/uj;->kz(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setPlayTrackUrls(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/byazt/un/uj;->mq(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/byazt/un/uj;->vi(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/byazt/un/uj;->cf(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-wide/16 v1, 0x0

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/byazt/un/uj;->ij(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/byazt/nj/c;->my()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/byazt/un/uj;->is(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/byazt/un/uj;->az(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/byazt/jzl/a;->getCacheParentDir()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setCacheParentDir(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/byazt/un/uj;->jt(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/byazt/un/uj;->c(Lcom/byazt/jzl/a;)Z

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/byazt/un/uj$7;->c:Lcom/byazt/un/uj;

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Lcom/byazt/nj/c;->ve(Z)V

    .line 146
    .line 147
    .line 148
    return-void
.end method
