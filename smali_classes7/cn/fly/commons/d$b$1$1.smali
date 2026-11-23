.class Lcn/fly/commons/d$b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/d$b$1;->a(Lcn/fly/tools/utils/FileLocker;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/d$b$1;


# direct methods
.method constructor <init>(Lcn/fly/commons/d$b$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/utils/DH$DHResponse;)V
    .locals 5

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    :try_start_0
    new-array v1, v0, [[Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 6
    .line 7
    iget-object v2, v2, Lcn/fly/commons/d$b$1;->a:Lcn/fly/commons/d$b;

    .line 8
    .line 9
    invoke-static {v2, v1}, Lcn/fly/commons/d$b;->a(Lcn/fly/commons/d$b;[[Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :goto_0
    if-lez v2, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 16
    .line 17
    iget-object v3, v3, Lcn/fly/commons/d$b$1;->a:Lcn/fly/commons/d$b;

    .line 18
    .line 19
    invoke-static {v3, v1, v2, p1}, Lcn/fly/commons/d$b;->a(Lcn/fly/commons/d$b;[[Ljava/lang/String;ILcn/fly/tools/utils/DH$DHResponse;)Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v4, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 30
    .line 31
    iget-object v4, v4, Lcn/fly/commons/d$b$1;->a:Lcn/fly/commons/d$b;

    .line 32
    .line 33
    iget-boolean v4, v4, Lcn/fly/commons/d$b;->a:Z

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcn/fly/commons/a/m;->d()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-lez v4, :cond_1

    .line 50
    .line 51
    iget-object v4, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 52
    .line 53
    iget-object v4, v4, Lcn/fly/commons/d$b$1;->a:Lcn/fly/commons/d$b;

    .line 54
    .line 55
    invoke-static {v4, v3}, Lcn/fly/commons/d$b;->a(Lcn/fly/commons/d$b;Landroid/util/SparseArray;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    if-ge v2, v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v2, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 62
    .line 63
    iget-object v2, v2, Lcn/fly/commons/d$b$1;->a:Lcn/fly/commons/d$b;

    .line 64
    .line 65
    invoke-static {v2, v1}, Lcn/fly/commons/d$b;->a(Lcn/fly/commons/d$b;[[Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_1
    iget-object p1, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 71
    .line 72
    iget-object p1, p1, Lcn/fly/commons/d$b$1;->a:Lcn/fly/commons/d$b;

    .line 73
    .line 74
    invoke-static {p1}, Lcn/fly/commons/d$b;->a(Lcn/fly/commons/d$b;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    iget-object v0, p0, Lcn/fly/commons/d$b$1$1;->a:Lcn/fly/commons/d$b$1;

    .line 80
    .line 81
    iget-object v0, v0, Lcn/fly/commons/d$b$1;->a:Lcn/fly/commons/d$b;

    .line 82
    .line 83
    invoke-static {v0}, Lcn/fly/commons/d$b;->a(Lcn/fly/commons/d$b;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method
