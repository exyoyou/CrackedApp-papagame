.class public Lcom/byazt/b/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/wh/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/b/uj;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/util/SparseArray;

.field public final synthetic tt:Landroid/util/SparseArray;

.field public final synthetic ve:Lcom/byazt/b/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/b/uj;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/b/uj$3;->ve:Lcom/byazt/b/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/b/uj$3;->c:Landroid/util/SparseArray;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/b/uj$3;->tt:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/b/uj$3;->ve:Lcom/byazt/b/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/b/uj;->c(Lcom/byazt/b/uj;)Lcom/byazt/b/sl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/byazt/b/uj$3;->ve:Lcom/byazt/b/uj;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/b/uj;->c(Lcom/byazt/b/uj;)Lcom/byazt/b/sl;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/byazt/b/sl;->c()Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/byazt/b/uj$3;->c:Landroid/util/SparseArray;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget-object v4, p0, Lcom/byazt/b/uj$3;->c:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ge v2, v4, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lcom/byazt/b/uj$3;->c:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v5, p0, Lcom/byazt/b/uj$3;->c:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/byazt/t/DownloadInfo;

    .line 47
    .line 48
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/byazt/b/uj$3;->ve:Lcom/byazt/b/uj;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/byazt/b/uj;->c(Lcom/byazt/b/uj;)Lcom/byazt/b/sl;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/byazt/b/sl;->a()Landroid/util/SparseArray;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/byazt/b/uj$3;->tt:Landroid/util/SparseArray;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    :goto_1
    iget-object v2, p0, Lcom/byazt/b/uj$3;->tt:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ge v3, v2, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Lcom/byazt/b/uj$3;->tt:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v4, p0, Lcom/byazt/b/uj$3;->tt:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/util/List;

    .line 91
    .line 92
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/byazt/b/uj$3;->ve:Lcom/byazt/b/uj;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/byazt/b/uj;->tt(Lcom/byazt/b/uj;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/byazt/b/uj$3;->ve:Lcom/byazt/b/uj;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/byazt/b/uj;->x()V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/byazt/ev/uj;->ve:Lcom/byazt/ev/uj;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/byazt/zz/ve;->c(Lcom/byazt/ev/uj;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception v1

    .line 116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw v1
.end method
