.class public Lcom/byazt/ky/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zyd/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a5,
        0x36
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/qcl/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ky/ve;->c:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ky/ve;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ky/ve;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTAdLoadNodeLineObserver onStarted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  adType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tme_node_line"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/byazt/qcl/tt;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    const-string p2, "ad_load"

    const-string v3, "started"

    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 4
    iget-object p2, p0, Lcom/byazt/ky/ve;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    return-void
.end method

.method public tt(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdLoadNodeLineObserver onReqed "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/x;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Tme_node_line"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 57
    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    :goto_0
    const-string p2, "ad_load"

    .line 70
    .line 71
    const-string v3, "reqed"

    .line 72
    .line 73
    invoke-direct {v0, p2, v3, v1, v2}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/byazt/ky/ve;->c:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 82
    .line 83
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public uj(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdLoadNodeLineObserver onLoaded "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p1, Lcom/byazt/ha/tt;->ve:Z

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x2

    .line 49
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "Tme_node_line"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 62
    .line 63
    const-string v5, "ad_load"

    .line 64
    .line 65
    const-string v6, "loaded"

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    :goto_1
    iget-boolean p2, p1, Lcom/byazt/ha/tt;->ve:Z

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    const/4 v9, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v9, 0x2

    .line 85
    :goto_2
    move-object v4, v0

    .line 86
    invoke-direct/range {v4 .. v9}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/byazt/ky/ve;->c:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 95
    .line 96
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p1, Lcom/byazt/ha/tt;->n:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v3}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/byazt/lh/ve;

    .line 122
    .line 123
    new-instance v1, Lcom/byazt/ky/ve$1;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/byazt/ky/ve$1;-><init>(Lcom/byazt/ky/ve;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p2, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    return-void
.end method

.method public ve(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTAdLoadNodeLineObserver onReceived "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " rit:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "  adType:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " source:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p1, Lcom/byazt/ha/tt;->tt:Z

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v3, 0x2

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x2

    .line 49
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "Tme_node_line"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/byazt/qcl/tt;

    .line 62
    .line 63
    const-string v5, "ad_load"

    .line 64
    .line 65
    const-string v6, "received"

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/byazt/ip/x;->c()J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    :goto_1
    iget-boolean p2, p1, Lcom/byazt/ha/tt;->tt:Z

    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    const/4 v9, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v9, 0x2

    .line 85
    :goto_2
    move-object v4, v0

    .line 86
    invoke-direct/range {v4 .. v9}, Lcom/byazt/qcl/tt;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/byazt/ky/ve;->c:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object p2, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 95
    .line 96
    invoke-static {v0, p2, p1}, Lcom/byazt/qcl/ve;->c(Lcom/byazt/qcl/tt;Lcom/byazt/ete/ic;Lcom/byazt/ip/c;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
