.class public Lcom/byazt/lcf/TTBaseVideoActivity$20;
.super Lcom/byazt/hkv/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x76c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic da:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/hkv/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sl(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->t(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->by()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Lcom/byazt/ete/da;

    .line 31
    .line 32
    invoke-direct {p2}, Lcom/byazt/ete/da;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->da()B

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p2, v0}, Lcom/byazt/ete/da;->tt(B)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/byazt/hkv/n;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/hkv/uj;->x:Lcom/byazt/zo/uj;

    .line 62
    .line 63
    const-class v1, Lcom/byazt/zo/tt;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/zo/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/byazt/zo/tt;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/byazt/zo/tt;->tt(Landroid/view/View;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$20;->da:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->u(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/kcl/c$c;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, p1, v0, p2}, Lcom/byazt/kcl/c;->c(Landroid/view/View;Lcom/byazt/kcl/c$c;Lcom/byazt/ete/da;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_1
    return-void
.end method
