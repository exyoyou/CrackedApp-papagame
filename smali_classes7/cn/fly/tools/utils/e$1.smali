.class Lcn/fly/tools/utils/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/utils/e;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/e$1;->a:Lcn/fly/tools/utils/e;

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
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcn/fly/tools/utils/e$1;->a:Lcn/fly/tools/utils/e;

    .line 4
    .line 5
    invoke-static {v2}, Lcn/fly/tools/utils/e;->a(Lcn/fly/tools/utils/e;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "020c-cbcbhcHiMehdkXhch>cfehedcheh3hede)ci"

    .line 10
    .line 11
    invoke-static {v3}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-array v4, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v5, p0, Lcn/fly/tools/utils/e$1;->a:Lcn/fly/tools/utils/e;

    .line 18
    .line 19
    invoke-static {v5}, Lcn/fly/tools/utils/e;->b(Lcn/fly/tools/utils/e;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    aput-object v5, v4, v1

    .line 24
    .line 25
    new-array v5, v0, [Ljava/lang/Class;

    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v7, "026cd1cbcicjchcbckFf.cjObchXchcjRd6ckhcAiCehdkOhch3cfeh"

    .line 33
    .line 34
    invoke-static {v7}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v7, "$"

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v7, "008=edcheh$hede7ci"

    .line 47
    .line 48
    invoke-static {v7}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    aput-object v6, v5, v1

    .line 64
    .line 65
    invoke-static {v2, v3, v4, v5}, Lcn/fly/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "[212] rg < 31"

    .line 73
    .line 74
    new-array v4, v1, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    .line 87
    const-string v4, "[cl]"

    .line 88
    .line 89
    aput-object v4, v0, v1

    .line 90
    .line 91
    const-string v1, "%s"

    .line 92
    .line 93
    invoke-virtual {v3, v2, v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method
