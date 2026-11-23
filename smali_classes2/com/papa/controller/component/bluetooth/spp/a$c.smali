.class Lcom/papa/controller/component/bluetooth/spp/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/bluetooth/spp/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/spp/a;->y(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/papa/controller/component/bluetooth/spp/a;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->b(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->w(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->k(Lcom/papa/controller/component/bluetooth/spp/a;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-lt v0, v2, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->j(Lcom/papa/controller/component/bluetooth/spp/a;I)I

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->B(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->l(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->l(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$d;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->b:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->a:Ljava/util/ArrayList;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/papa/controller/component/bluetooth/spp/a;->i(Lcom/papa/controller/component/bluetooth/spp/a;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {v0, v1, v2}, Lcom/papa/controller/component/bluetooth/spp/a$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-static {v0, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->g(Lcom/papa/controller/component/bluetooth/spp/a;Lcom/papa/controller/component/bluetooth/spp/a$e;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 112
    .line 113
    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->h(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/papa/controller/component/bluetooth/spp/a;->g(Lcom/papa/controller/component/bluetooth/spp/a;Lcom/papa/controller/component/bluetooth/spp/a$e;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$c;->c:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {p1, p2}, Lcom/papa/controller/component/bluetooth/spp/a;->h(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
