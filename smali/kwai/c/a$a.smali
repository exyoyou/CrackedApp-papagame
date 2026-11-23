.class public Lkwai/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkwai/c/a;->b(Ljava/lang/String;Lgc/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lgc/d;

.field public final synthetic d:Lkwai/c/a;


# direct methods
.method public constructor <init>(Lkwai/c/a;Ljava/lang/String;Lgc/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkwai/c/a$a;->d:Lkwai/c/a;

    .line 2
    .line 3
    iput-object p2, p0, Lkwai/c/a$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lkwai/c/a$a;->c:Lgc/d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    invoke-static {v0}, Lec/c;->e(Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "register sdk request json:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "HttpManager"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lgc/b;

    .line 36
    .line 37
    invoke-direct {v1}, Lgc/b;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lkwai/c/a$a;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v3, Lkwai/c/a$a$a;

    .line 47
    .line 48
    invoke-direct {v3, p0}, Lkwai/c/a$a$a;-><init>(Lkwai/c/a$a;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v0, v3}, Lgc/b;->b(Ljava/lang/String;Ljava/lang/String;Lgc/c;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
