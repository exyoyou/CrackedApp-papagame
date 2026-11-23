.class public Lkwai/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkwai/a/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkwai/a/e;


# direct methods
.method public constructor <init>(Lkwai/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register sdk onError errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-errorMsg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TurboSDK"

    invoke-static {p2, p1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    .line 32
    invoke-virtual {p1}, Lkwai/a/e;->i()V

    return-void
.end method

.method public a(Lfc/c;)V
    .locals 3

    const-string v0, "TurboSDK"

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p1, Lfc/c;->c:Lfc/c$b;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lfc/c$b;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "register sdk success"

    .line 2
    invoke-static {v0, v1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkwai/a/e;->d(Lkwai/a/e;Z)Z

    .line 4
    iget-object v0, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    .line 5
    iget-object v1, v0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 6
    iget-boolean v0, v0, Lkwai/a/e;->i:Z

    .line 7
    invoke-static {v1}, Lec/c;->b(Landroid/content/Context;)V

    .line 8
    sget-object v1, Lec/c;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ks_register_success"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    :cond_0
    iget-object p1, p1, Lfc/c;->c:Lfc/c$b;

    iget-object p1, p1, Lfc/c$b;->a:Ljava/lang/String;

    .line 11
    sput-object p1, Lkwai/a/e;->k:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    .line 13
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    const-string v1, "ks_global_id"

    .line 14
    invoke-static {v0, v1, p1}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 16
    iget-object p1, p1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 17
    new-instance v0, Lfc/a;

    const-string v1, "EVENT_CONVERSION"

    invoke-direct {v0, v1}, Lfc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lkwai/a/e;->b(Lfc/a;)V

    .line 18
    iget-object p1, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    .line 19
    invoke-virtual {p1}, Lkwai/a/e;->h()V

    .line 20
    sget-object p1, Lkwai/a/a$b;->b:Lkwai/a/a$b;

    .line 21
    iget-object p1, p1, Lkwai/a/a$b;->a:Lkwai/a/a;

    .line 22
    iget-object v0, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    .line 23
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 24
    invoke-virtual {p1, v0}, Lkwai/a/a;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 25
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register sdk fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p1, Lfc/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lkwai/a/e$b;->a:Lkwai/a/e;

    .line 29
    invoke-virtual {p1}, Lkwai/a/e;->i()V

    :goto_1
    return-void
.end method
