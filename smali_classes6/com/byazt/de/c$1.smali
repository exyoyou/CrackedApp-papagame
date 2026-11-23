.class public Lcom/byazt/de/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/e/tt$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6f,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/de/c;->c(Landroid/content/Context;Lcom/byazt/nn/c;Lcom/byazt/de/c$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dd/tt;

.field public final synthetic n:Lcom/byazt/de/c;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic uj:Lcom/byazt/de/c$c;

.field public final synthetic ve:Lcom/byazt/nn/c;


# direct methods
.method public constructor <init>(Lcom/byazt/de/c;Lcom/byazt/dd/tt;Landroid/content/Context;Lcom/byazt/nn/c;Lcom/byazt/de/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/de/c$1;->n:Lcom/byazt/de/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/de/c$1;->c:Lcom/byazt/dd/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/de/c$1;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/de/c$1;->ve:Lcom/byazt/nn/c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/de/c$1;->uj:Lcom/byazt/de/c$c;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "backdialog_install"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/de/c$1;->c:Lcom/byazt/dd/tt;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/de/c$1;->tt:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/de/c$1;->ve:Lcom/byazt/nn/c;

    .line 15
    .line 16
    iget-wide v1, v1, Lcom/byazt/nn/c;->c:J

    .line 17
    .line 18
    long-to-int v2, v1

    .line 19
    invoke-static {v0, v2}, Lcom/byazt/z/uj;->c(Landroid/content/Context;I)Z

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public tt(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "backdialog_exit"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/de/c$1;->c:Lcom/byazt/dd/tt;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/de/c$1;->uj:Lcom/byazt/de/c$c;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/byazt/de/c$c;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/de/c$1;->n:Lcom/byazt/de/c;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/de/c;->tt(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public ve(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/de/c$1;->n:Lcom/byazt/de/c;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/byazt/de/c;->tt(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
