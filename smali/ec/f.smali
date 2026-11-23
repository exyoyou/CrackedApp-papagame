.class public Lec/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/d;


# instance fields
.field public final synthetic a:Lkwai/a/e;


# direct methods
.method public constructor <init>(Lkwai/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/f;->a:Lkwai/a/e;

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
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lfc/c;)V
    .locals 2

    const-string v0, "TurboSDK"

    const-string v1, "request global success"

    .line 2
    invoke-static {v0, v1}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lfc/c;->c:Lfc/c$b;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lfc/c$b;->a:Ljava/lang/String;

    .line 5
    sput-object p1, Lkwai/a/e;->k:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lec/f;->a:Lkwai/a/e;

    .line 7
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    const-string v1, "ks_global_id"

    .line 8
    invoke-static {v0, v1, p1}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
