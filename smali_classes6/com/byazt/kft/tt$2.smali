.class public Lcom/byazt/kft/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/tt;->c(Lcom/byazt/fk/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fk/ve;

.field public final synthetic tt:Lcom/byazt/kft/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/tt;Lcom/byazt/fk/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/tt$2;->tt:Lcom/byazt/kft/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kft/tt$2;->c:Lcom/byazt/fk/ve;

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
    iget-object v0, p0, Lcom/byazt/kft/tt$2;->tt:Lcom/byazt/kft/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kft/tt;->ve(Lcom/byazt/kft/tt;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt$2;->tt:Lcom/byazt/kft/tt;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;Z)Z

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "--==--play err, code: "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/kft/tt$2;->c:Lcom/byazt/fk/ve;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/byazt/fk/ve;->getCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", extra: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/byazt/kft/tt$2;->c:Lcom/byazt/fk/ve;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/byazt/fk/ve;->getExtraCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", msg: "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/byazt/kft/tt$2;->c:Lcom/byazt/fk/ve;

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "UpieVideoPlayer"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/kft/tt$2;->tt:Lcom/byazt/kft/tt;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/byazt/kft/tt;->uj(Lcom/byazt/kft/tt;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/byazt/kft/tt$2;->tt:Lcom/byazt/kft/tt;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/byazt/kft/tt$2;->c:Lcom/byazt/fk/ve;

    .line 104
    .line 105
    invoke-interface {v1, v2, v3}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method
