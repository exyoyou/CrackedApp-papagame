.class Lcom/beizi/ad/internal/c/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/c/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/internal/c/a;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->a(Lcom/beizi/ad/internal/c/a;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/ad/internal/c/a;->a(Lcom/beizi/ad/internal/c/a;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "lance"

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v5, "setClickListener:"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/beizi/ad/internal/d;

    .line 55
    .line 56
    invoke-direct {v3, v2}, Lcom/beizi/ad/internal/d;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-array v2, v1, [Ljava/lang/Void;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 80
    .line 81
    invoke-static {p1, v1}, Lcom/beizi/ad/internal/c/a;->a(Lcom/beizi/ad/internal/c/a;I)I

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/beizi/ad/internal/c/a;->b(Lcom/beizi/ad/internal/c/a;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/beizi/ad/internal/c/a;->c(Lcom/beizi/ad/internal/c/a;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {p1, v1, v2, v0}, Lcom/beizi/ad/internal/c/a;->a(Lcom/beizi/ad/internal/c/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/beizi/ad/internal/c/a;->h(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/internal/c/b;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    iget-object p1, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/beizi/ad/internal/c/a;->h(Lcom/beizi/ad/internal/c/a;)Lcom/beizi/ad/internal/c/b;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Lcom/beizi/ad/internal/c/b;->a()V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object p1, p0, Lcom/beizi/ad/internal/c/a$6;->a:Lcom/beizi/ad/internal/c/a;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-static {p1, v0}, Lcom/beizi/ad/internal/c/a;->a(Lcom/beizi/ad/internal/c/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-void
.end method
