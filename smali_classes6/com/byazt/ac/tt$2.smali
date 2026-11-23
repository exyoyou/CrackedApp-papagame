.class public Lcom/byazt/ac/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ac/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ZILjava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 9
    .line 10
    iput-boolean v3, v4, Lcom/byazt/ac/c;->m:Z

    .line 11
    .line 12
    invoke-static {v4}, Lcom/byazt/ac/tt;->c(Lcom/byazt/ac/tt;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    iget-object v5, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 19
    .line 20
    invoke-static {v5}, Lcom/byazt/ac/tt;->tt(Lcom/byazt/ac/tt;)D

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 25
    .line 26
    invoke-static {v4}, Lcom/byazt/ac/tt;->ve(Lcom/byazt/ac/tt;)D

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/byazt/ac/tt;->uj(Lcom/byazt/ac/tt;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 37
    .line 38
    invoke-static {v4}, Lcom/byazt/ac/tt;->n(Lcom/byazt/ac/tt;)D

    .line 39
    .line 40
    .line 41
    move-result-wide v12

    .line 42
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/byazt/ac/tt;->a(Lcom/byazt/ac/tt;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v14

    .line 48
    invoke-virtual/range {v5 .. v14}, Lcom/byazt/ac/tt;->c(DDDDLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 52
    .line 53
    invoke-static {v4, v2}, Lcom/byazt/ac/tt;->c(Lcom/byazt/ac/tt;Z)Z

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 59
    .line 60
    invoke-static {v4}, Lcom/byazt/ete/xd;->sl(Lcom/byazt/ete/ic;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    iget-object v4, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 67
    .line 68
    move/from16 v5, p2

    .line 69
    .line 70
    move-object/from16 v6, p3

    .line 71
    .line 72
    invoke-virtual {v4, v1, v5, v6}, Lcom/byazt/ac/c;->c(ZILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v1, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    iget-object v1, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Lcom/byazt/ac/c;->c(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/byazt/ac/c;->c(ZZ)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    iget-object v1, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->a(Z)Lcom/byazt/omf/d;

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/byazt/ac/c;->c(Z)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/byazt/ac/tt$2;->c:Lcom/byazt/ac/tt;

    .line 118
    .line 119
    invoke-virtual {v1, v3, v2}, Lcom/byazt/ac/c;->c(ZZ)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void
.end method
