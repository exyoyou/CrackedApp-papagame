.class public Lcom/byazt/gt/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sa/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc3,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gt/c;->yv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/gt/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gt/c$2;->c:Lcom/byazt/gt/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/gt/c$2;->c:Lcom/byazt/gt/c;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/gt/c;->i(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/gt/c$2;->c:Lcom/byazt/gt/c;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/gt/c;->sl(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/byazt/gt/c$2;->c:Lcom/byazt/gt/c;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/gt/c;->da(Lcom/byazt/gt/c;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/byazt/sz/sp;->tt(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/byazt/gt/c$2;->c:Lcom/byazt/gt/c;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/byazt/gt/c;->t(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/byazt/gt/c$2;->c:Lcom/byazt/gt/c;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/byazt/gt/c;->yp(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/byazt/gt/c$2;->c:Lcom/byazt/gt/c;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/byazt/gt/c;->u(Lcom/byazt/gt/c;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p1, v0, v1}, Lcom/byazt/sz/sp;->c(Lcom/byazt/xj/ve;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
