.class public final Lcom/byazt/uy/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x49c,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uy/sp;->c(Landroid/content/Context;Lcom/byazt/uy/n;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uy/sp$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/uy/sp$1;->tt:Z

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/kr/c;->c()Lcom/byazt/kr/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/uy/sp$1;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/kr/c;->c(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/uy/sp$1;->c:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/jz/uj;->c(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/byazt/uy/sp$1;->tt:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/uy/sp$1;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/kg/a;->c(Landroid/content/Context;)Lcom/byazt/kg/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/kg/a;->c()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
