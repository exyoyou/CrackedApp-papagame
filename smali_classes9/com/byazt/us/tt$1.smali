.class public Lcom/byazt/us/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfb,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/us/tt;->c(Lcom/byazt/dd/tt;Lcom/byazt/us/sp;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dd/tt;

.field public final synthetic tt:Lcom/byazt/us/sp;

.field public final synthetic ve:Lcom/byazt/us/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/us/tt;Lcom/byazt/dd/tt;Lcom/byazt/us/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/us/tt$1;->ve:Lcom/byazt/us/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/us/tt$1;->c:Lcom/byazt/dd/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/us/tt$1;->tt:Lcom/byazt/us/sp;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/us/tt$1;->c:Lcom/byazt/dd/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/us/i;->c(Lcom/byazt/dd/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/us/tt$1;->tt:Lcom/byazt/us/sp;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/byazt/us/sp;->c(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/us/tt$1;->c:Lcom/byazt/dd/tt;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/us/a;->c(Lcom/byazt/dd/tt;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/us/tt$1;->tt:Lcom/byazt/us/sp;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/byazt/us/sp;->c(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/us/tt$1;->c:Lcom/byazt/dd/tt;

    .line 31
    .line 32
    new-instance v1, Lcom/byazt/us/tt$1$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/byazt/us/tt$1$1;-><init>(Lcom/byazt/us/tt$1;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/byazt/us/a;->c(Lcom/byazt/dd/tt;Lcom/byazt/us/x;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
