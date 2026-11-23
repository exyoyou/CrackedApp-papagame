.class public Lec/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/c;


# instance fields
.field public final synthetic a:Lkwai/a/e;


# direct methods
.method public constructor <init>(Lkwai/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/g;->a:Lkwai/a/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lfc/b;)V
    .locals 1

    .line 11
    iget-object p1, p0, Lec/g;->a:Lkwai/a/e;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lkwai/a/e;->o:Z

    .line 14
    invoke-virtual {p1}, Lkwai/a/e;->g()V

    .line 15
    invoke-virtual {p1}, Lkwai/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lkwai/a/e;->h()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    sput-object v0, Lkwai/a/e;->n:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySwitchMessage  parse error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TurboSDK"

    invoke-static {v0, p1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lec/g;->a:Lkwai/a/e;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lkwai/a/e;->o:Z

    .line 8
    invoke-virtual {p1}, Lkwai/a/e;->g()V

    .line 9
    invoke-virtual {p1}, Lkwai/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lkwai/a/e;->h()V

    :cond_1
    return-void
.end method
