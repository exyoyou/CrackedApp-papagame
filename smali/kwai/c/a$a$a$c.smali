.class public Lkwai/c/a$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkwai/c/a$a$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkwai/c/a$a$a;


# direct methods
.method public constructor <init>(Lkwai/c/a$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkwai/c/a$a$a$c;->b:Lkwai/c/a$a$a;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lkwai/c/a$a$a$c;->b:Lkwai/c/a$a$a;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/c/a$a$a;->a:Lkwai/c/a$a;

    .line 4
    .line 5
    iget-object v0, v0, Lkwai/c/a$a;->c:Lgc/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "json parse error"

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lgc/d;->a(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
