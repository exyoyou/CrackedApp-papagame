.class public Lkwai/c/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkwai/c/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkwai/c/a$a;


# direct methods
.method public constructor <init>(Lkwai/c/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

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
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register sdk fail server error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

    iget-object v0, v0, Lkwai/c/a$a;->d:Lkwai/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkwai/c/a;->c(Lkwai/c/a;Z)Z

    .line 20
    iget-object v0, p0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

    iget-object v0, v0, Lkwai/c/a$a;->d:Lkwai/c/a;

    .line 21
    iget-object v0, v0, Lkwai/c/a;->b:Landroid/os/Handler;

    .line 22
    new-instance v1, Lkwai/c/a$a$a$d;

    invoke-direct {v1, p0, p1}, Lkwai/c/a$a$a$d;-><init>(Lkwai/c/a$a$a;Lfc/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register sdk success jsonResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpManager"

    invoke-static {v1, v0}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lfc/c;

    invoke-direct {v0}, Lfc/c;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lfc/c;->a(Lorg/json/JSONObject;)V

    .line 4
    iget p1, v0, Lfc/c;->a:I

    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 5
    iget-object p1, p0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

    iget-object p1, p1, Lkwai/c/a$a;->d:Lkwai/c/a;

    .line 6
    iget-object p1, p1, Lkwai/c/a;->b:Landroid/os/Handler;

    .line 7
    new-instance v2, Lkwai/c/a$a$a$a;

    invoke-direct {v2, p0, v0}, Lkwai/c/a$a$a$a;-><init>(Lkwai/c/a$a$a;Lfc/c;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

    iget-object p1, p1, Lkwai/c/a$a;->d:Lkwai/c/a;

    .line 9
    iget-object p1, p1, Lkwai/c/a;->b:Landroid/os/Handler;

    .line 10
    new-instance v2, Lkwai/c/a$a$a$b;

    invoke-direct {v2, p0, v0}, Lkwai/c/a$a$a$b;-><init>(Lkwai/c/a$a$a;Lfc/c;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register sdk success fail and error message :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lfc/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register sdk fail and json parse error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    iget-object p1, p0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

    iget-object p1, p1, Lkwai/c/a$a;->d:Lkwai/c/a;

    .line 15
    iget-object p1, p1, Lkwai/c/a;->b:Landroid/os/Handler;

    .line 16
    new-instance v0, Lkwai/c/a$a$a$c;

    invoke-direct {v0, p0}, Lkwai/c/a$a$a$c;-><init>(Lkwai/c/a$a$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :goto_0
    iget-object p1, p0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

    iget-object p1, p1, Lkwai/c/a$a;->d:Lkwai/c/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkwai/c/a;->c(Lkwai/c/a;Z)Z

    return-void
.end method
