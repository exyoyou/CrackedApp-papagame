.class public Lkwai/c/a$a$a$b;
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
.field public final synthetic b:Lfc/c;

.field public final synthetic c:Lkwai/c/a$a$a;


# direct methods
.method public constructor <init>(Lkwai/c/a$a$a;Lfc/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkwai/c/a$a$a$b;->c:Lkwai/c/a$a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lkwai/c/a$a$a$b;->b:Lfc/c;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lkwai/c/a$a$a$b;->c:Lkwai/c/a$a$a;

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
    iget-object v1, p0, Lkwai/c/a$a$a$b;->b:Lfc/c;

    .line 10
    .line 11
    iget-object v1, v1, Lfc/c;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v2, v1}, Lgc/d;->a(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
