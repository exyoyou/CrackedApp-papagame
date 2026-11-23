.class public Lgc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lgc/c;


# direct methods
.method public constructor <init>(Lkwai/c/a;Ljava/lang/String;Lgc/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lgc/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lgc/a;->c:Lgc/c;

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
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "sdkVersion"

    .line 7
    .line 8
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 11
    .line 12
    .line 13
    const-string v1, "version"

    .line 14
    .line 15
    const-string v2, "1.0.17"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 21
    .line 22
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 23
    .line 24
    iget-object v1, v1, Lkwai/a/e;->d:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "appId"

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "querySwitchMessage:"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "HttpManager"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lgc/b;

    .line 54
    .line 55
    invoke-direct {v1}, Lgc/b;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lgc/a;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v3, Lgc/a$a;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lgc/a$a;-><init>(Lgc/a;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v0, v3}, Lgc/b;->b(Ljava/lang/String;Ljava/lang/String;Lgc/c;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
