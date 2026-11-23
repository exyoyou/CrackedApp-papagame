.class public Lcom/byazt/mt/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wl/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ac,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/mt/c;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/mt/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/aq/x;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/mt/c;->tt(Lcom/byazt/mt/c;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/mt/c;->ve(Lcom/byazt/mt/c;)Lcom/byazt/xl/u;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/byazt/mt/c;->ve()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-interface {v0, v1}, Lcom/byazt/xl/i;->ve(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/byazt/mt/c;->c(Lcom/byazt/mt/c;Lcom/byazt/aq/x;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/byazt/mt/c;->tt(Lcom/byazt/mt/c;Lcom/byazt/aq/x;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/mt/c;->uj(Lcom/byazt/mt/c;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/byazt/mt/c;->ve(Lcom/byazt/mt/c;Lcom/byazt/aq/x;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lcom/byazt/mt/c$3$1;

    .line 54
    .line 55
    invoke-direct {v1, p0, p1}, Lcom/byazt/mt/c$3$1;-><init>(Lcom/byazt/mt/c$3;Lcom/byazt/aq/x;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/byazt/mt/c;->n(Lcom/byazt/mt/c;)Lcom/byazt/tm/DynamicRootView;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/byazt/mt/c;->n(Lcom/byazt/mt/c;)Lcom/byazt/tm/DynamicRootView;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/byazt/aq/x;->c()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/byazt/tm/DynamicRootView;->setBgColor(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/byazt/mt/c$3;->c:Lcom/byazt/mt/c;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/byazt/mt/c;->n(Lcom/byazt/mt/c;)Lcom/byazt/tm/DynamicRootView;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/byazt/aq/x;->tt()Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Lcom/byazt/tm/DynamicRootView;->setBgMaterialCenterCalcColor(Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method
